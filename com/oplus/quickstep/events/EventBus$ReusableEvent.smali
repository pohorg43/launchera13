.class public Lcom/oplus/quickstep/events/EventBus$ReusableEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReusableEvent"
.end annotation


# instance fields
.field private mDispatchCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance p0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {p0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw p0
.end method

.method public onPostDispatch()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/quickstep/events/EventBus$Event;->onPostDispatch()V

    iget v0, p0, Lcom/oplus/quickstep/events/EventBus$ReusableEvent;->mDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/quickstep/events/EventBus$ReusableEvent;->mDispatchCount:I

    return-void
.end method
