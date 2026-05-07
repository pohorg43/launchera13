.class public final synthetic Lcom/oplus/quickstep/rapidreaction/widget/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method
