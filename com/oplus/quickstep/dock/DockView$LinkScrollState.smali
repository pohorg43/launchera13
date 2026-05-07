.class public final Lcom/oplus/quickstep/dock/DockView$LinkScrollState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dock/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkScrollState"
.end annotation


# static fields
.field public static final DOCK_SCROLL:I = 0x1

.field public static final RECENTS_SCROLL:I = 0x0

.field public static final UNLINK_SCROLL:I = -0x1


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->mState:I

    return-void
.end method


# virtual methods
.method public getState()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->mState:I

    return p0
.end method

.method public isDockScroll()Z
    .registers 2

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isRecentsScroll()Z
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->mState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isUnlinkScroll()Z
    .registers 2

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->mState:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->mState:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
