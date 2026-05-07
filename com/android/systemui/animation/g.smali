.class public final synthetic Lcom/android/systemui/animation/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/window/TransitionInfo;I)I
    .registers 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method
