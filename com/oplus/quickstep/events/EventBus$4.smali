.class Lcom/oplus/quickstep/events/EventBus$4;
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

.field public final synthetic val$eventHandler:Lcom/oplus/quickstep/events/EventHandler;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/events/EventBus;Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventBus$Event;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/quickstep/events/EventBus$4;->this$0:Lcom/oplus/quickstep/events/EventBus;

    iput-object p2, p0, Lcom/oplus/quickstep/events/EventBus$4;->val$eventHandler:Lcom/oplus/quickstep/events/EventHandler;

    iput-object p3, p0, Lcom/oplus/quickstep/events/EventBus$4;->val$event:Lcom/oplus/quickstep/events/EventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/events/EventBus$4;->this$0:Lcom/oplus/quickstep/events/EventBus;

    iget-object v1, p0, Lcom/oplus/quickstep/events/EventBus$4;->val$eventHandler:Lcom/oplus/quickstep/events/EventHandler;

    iget-object p0, p0, Lcom/oplus/quickstep/events/EventBus$4;->val$event:Lcom/oplus/quickstep/events/EventBus$Event;

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/events/EventBus;->access$000(Lcom/oplus/quickstep/events/EventBus;Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventBus$Event;)V

    return-void
.end method
