.class public Lcom/oplus/quickstep/events/EventBus$Event;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public cancelled:Z

.field public requiresPost:Z

.field public trace:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/events/EventBus$Event;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/events/EventBus$Event;->cancelled:Z

    return-object p0
.end method

.method public onPostDispatch()V
    .registers 1

    return-void
.end method

.method public onPreDispatch()V
    .registers 1

    return-void
.end method
