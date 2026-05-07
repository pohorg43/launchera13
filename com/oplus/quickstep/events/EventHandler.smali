.class Lcom/oplus/quickstep/events/EventHandler;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public method:Lcom/oplus/quickstep/events/EventHandlerMethod;

.field public priority:I

.field public subscriber:Lcom/oplus/quickstep/events/Subscriber;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/events/Subscriber;Lcom/oplus/quickstep/events/EventHandlerMethod;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/events/EventHandler;->subscriber:Lcom/oplus/quickstep/events/Subscriber;

    iput-object p2, p0, Lcom/oplus/quickstep/events/EventHandler;->method:Lcom/oplus/quickstep/events/EventHandlerMethod;

    iput p3, p0, Lcom/oplus/quickstep/events/EventHandler;->priority:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/events/EventHandler;->subscriber:Lcom/oplus/quickstep/events/Subscriber;

    iget v2, p0, Lcom/oplus/quickstep/events/EventHandler;->priority:I

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/events/Subscriber;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/events/EventHandler;->method:Lcom/oplus/quickstep/events/EventHandlerMethod;

    invoke-virtual {p0}, Lcom/oplus/quickstep/events/EventHandlerMethod;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
