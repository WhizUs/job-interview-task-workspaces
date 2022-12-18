# The Story

## WhizDev Code Company

Tom had been working on his promising SaaS product with his very distributed team for many months. Suddenly, public interest and adoption grew almost exponentially. Tom and his team hadn't anticipated the speed at which they would need to onboard new engineers, and some issues arose in the process.

It turned out that because many devs are also not on site (which is generally not a problem), it is quite difficult to explain the details of one's own development workflows or tools (even though one has created quite a lot of Confluence pages) or in general to quickly solve certain technical problems that can be traced back to everyone setting up an individual work environment on their laptop. Actually you want something similar to [killercoda](https://killercoda.com/) that would allow you to easily provide a predefined environment to the developer and build on it.

The only problem is that such an environment should necessarily be available in one's own cloud, where a lot of needed dependencies already exist.

Fortunately, Tom can remember the legacy workshop environments John once threw together.

*Tom:* Hey John! Do you remember your workshop environments? Any way we can maybe use or improve them? I remember you mentioning something that you didn't like so much anymore.

*John:* Sure, well, we can use it, but it got totally cumbersome over time and no one ever updated the dependencies either. We already used [code-server](https://github.com/coder/code-server) there anyway, which we've been using for ages. The devs behind it have now also released a really cool product called [coder](https://coder.com/). It's actually exactly what we need.

*Tom:* Yes that sounds exciting. Can we also define the environments in such a way that we provide each dev with a VM that could also be paused? And on the VM we could use [kind](https://kind.sigs.k8s.io/) for example. I would also like to do something similar to CKAD/CKA for our Kubernetes Labs, and preferably still document it with [CodeTour](https://marketplace.visualstudio.com/items?itemName=vsls-contrib.codetour).

*John:* I didn't find Exoscale VM Template in the [examples](https://github.com/coder/coder/tree/main/examples/templates), but I'm sure that can be done easily. Likewise, yes you can start pods with `code-server` as the workspace, I think that wouldn't be bad either. Preferably with a separate namespace per user, which is also partitioned off with `NetworkPolicies`.

*Tom:* Yes that sounds very good. Let's try it out.