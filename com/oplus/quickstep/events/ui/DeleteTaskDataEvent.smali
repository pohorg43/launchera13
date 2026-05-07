.class public Lcom/oplus/quickstep/events/ui/DeleteTaskDataEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# instance fields
.field public final task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method
