<!doctype html>
<html>

<head>
    <title>JSP Test</title>
    <%!
			String title = "Hello World";
		%>
</head>

<body>

    <h2>
        <%= title %>
    </h2>
    <p>
        If you see this, the example war-file was correctly deployed! Congrats!
    </p>
    <p>
        <div id="currentTime"></div>
    </p>
    <p>
        You are from
        <%= request.getRemoteAddr() %>
    </p>
    <div id="conrgrats"></div>
    <script type="text/javascript">
        function updateYourTime() {
            var now = new Date(),
                months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October',
                    'November', 'December'
                ];
            time = now.getHours() + ':' + now.getMinutes() + ':' + now.getSeconds(),

                date = [now.getDate(),
                    months[now.getMonth()],
                    now.getFullYear()
                ].join(' ');

            document.getElementById('currentTime').innerHTML = [date, time].join(' / ');

            setTimeout(updateYourTime, 1000); //This method will call for every second
        }
        updateYourTime();
    </script>
    <style>
        #conrgrats {
            width: 440px;
            height: 302px;
            background: no-repeat left center url('https://raw.githubusercontent.com/karthiksenniappan/images/master/icons/download.gif');
        }
    </style>
</body>

</html>