.class public interface abstract Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/DividerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SplitMenuPolicy"
.end annotation


# virtual methods
.method public canSaveSplitPair()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public canToggleDividerOrientation()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public supportToggleDividerOrientation()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
