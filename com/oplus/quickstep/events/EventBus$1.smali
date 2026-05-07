.class Lcom/oplus/quickstep/events/EventBus$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oplus/quickstep/events/EventHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventHandler;)I
    .registers 5

    iget p0, p1, Lcom/oplus/quickstep/events/EventHandler;->priority:I

    iget v0, p2, Lcom/oplus/quickstep/events/EventHandler;->priority:I

    if-eq p0, v0, :cond_8

    sub-int/2addr v0, p0

    return v0

    :cond_8
    iget-object p0, p2, Lcom/oplus/quickstep/events/EventHandler;->subscriber:Lcom/oplus/quickstep/events/Subscriber;

    iget-wide v0, p0, Lcom/oplus/quickstep/events/Subscriber;->registrationTime:J

    iget-object p0, p1, Lcom/oplus/quickstep/events/EventHandler;->subscriber:Lcom/oplus/quickstep/events/Subscriber;

    iget-wide p0, p0, Lcom/oplus/quickstep/events/Subscriber;->registrationTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/oplus/quickstep/events/EventHandler;

    check-cast p2, Lcom/oplus/quickstep/events/EventHandler;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/events/EventBus$1;->compare(Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventHandler;)I

    move-result p0

    return p0
.end method
