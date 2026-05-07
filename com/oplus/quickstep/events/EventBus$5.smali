.class Lcom/oplus/quickstep/events/EventBus$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/events/EventBus;->queueEvent(Lcom/oplus/quickstep/events/EventBus$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/events/EventBus;

.field public final synthetic val$event:Lcom/oplus/quickstep/events/EventBus$Event;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/events/EventBus;Lcom/oplus/quickstep/events/EventBus$Event;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/events/EventBus$5;->this$0:Lcom/oplus/quickstep/events/EventBus;

    iput-object p2, p0, Lcom/oplus/quickstep/events/EventBus$5;->val$event:Lcom/oplus/quickstep/events/EventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/events/EventBus$5;->val$event:Lcom/oplus/quickstep/events/EventBus$Event;

    invoke-virtual {p0}, Lcom/oplus/quickstep/events/EventBus$Event;->onPostDispatch()V

    return-void
.end method
