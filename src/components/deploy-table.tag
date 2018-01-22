<DeployTable>

  Service: <input name="service" onkeyup={ edit } placeholder="Try Media"/>
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Build Time</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr each="{ item,i in page }" key={ i }>
        <td>{ item.service }</td>
        <td>{ item.minutes } minutes(s)</td>
        <td>{ item.success ? 'Success' : 'Fail' }</td>
      </tr>
    </tbody>
  </table>

  <button if={ index > 0 } class="button" onclick={ prev }>Prev</button>
  <button if={ index+1 < list.length/psize } class="button" onclick={ next }>Next</button>

  <script type="es6">

    this.index = 0
    this.psize = 4
    this.list = this.deploys.list
    this.page = this.list.slice(0,this.psize)

    this.edit = e => {
      this.index = 0
      this.list = this.deploys.search(e.target.value)
    }

    this.next = e => this.index++
    this.prev = e => this.index--

    this.on('update', () => {
      this.page = this.list.slice(this.index*this.psize, this.index*this.psize+this.psize)
    })

  </script>
</DeployTable>
