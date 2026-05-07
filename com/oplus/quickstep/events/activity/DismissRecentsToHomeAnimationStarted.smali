.class public Lcom/oplus/quickstep/events/activity/DismissRecentsToHomeAnimationStarted;
.super Lcom/oplus/quickstep/events/EventBus$AnimatedEvent;
.source ""


# instance fields
.field public final animated:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$AnimatedEvent;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/quickstep/events/activity/DismissRecentsToHomeAnimationStarted;->animated:Z

    return-void
.end method
