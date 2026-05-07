.class public abstract Lcom/oplus/fancyicon/command/tracker/StateTracker;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_INTERMEDIATE:I = 0x5

.field public static final STATE_TURNING_OFF:I = 0x3

.field public static final STATE_TURNING_ON:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x4

.field public static final TAG:Ljava/lang/String; = "StateTracker"


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mActualState:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/command/tracker/StateTracker;->getActualState(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_11

    const/4 p1, 0x1

    if-eq p0, p1, :cond_10

    return v1

    :cond_10
    return p1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final isTurningOn()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method public final setCurrentState(Landroid/content/Context;I)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_24

    if-eq p2, v2, :cond_1d

    const/4 v3, 0x2

    if-eq p2, v3, :cond_16

    const/4 v3, 0x3

    if-eq p2, v3, :cond_f

    goto :goto_2a

    :cond_f
    iput-boolean v2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_2a

    :cond_16
    iput-boolean v2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_2a

    :cond_1d
    iput-boolean v1, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_2a

    :cond_24
    iput-boolean v1, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mActualState:Ljava/lang/Boolean;

    :goto_2a
    if-eqz v0, :cond_5e

    iget-boolean p2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    if-nez p2, :cond_5e

    iget-boolean p2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz p2, :cond_5e

    const-string p2, "StateTracker"

    const-string v0, "processing deferred state change"

    invoke-static {p2, v0}, Lcom/oplus/fancyicon/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v0, :cond_4f

    iget-object v3, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_4f

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string p1, "... but intended state matches, so no changes."

    invoke-static {p2, p1}, Lcom/oplus/fancyicon/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_4f
    iget-object p2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz p2, :cond_5c

    iput-boolean v2, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/command/tracker/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    :cond_5c
    :goto_5c
    iput-boolean v1, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :cond_5e
    return-void
.end method

.method public final toggleState(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/command/tracker/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    const/4 v2, 0x5

    if-eq v0, v2, :cond_f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    goto :goto_27

    :cond_f
    iget-object v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    goto :goto_1c

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    move v2, v1

    :cond_1c
    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    goto :goto_27

    :cond_23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    :goto_27
    iget-boolean v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    if-eqz v0, :cond_2e

    iput-boolean v1, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    goto :goto_39

    :cond_2e
    iput-boolean v1, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mInTransition:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/command/tracker/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/fancyicon/command/tracker/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    :goto_39
    return-void
.end method
