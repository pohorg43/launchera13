.class public Lcom/coui/appcompat/slideview/COUISlideMenuItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/support/appcompat/R$drawable;->coui_slide_copy_background:I

    const/16 v1, 0x36

    iput v1, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->b:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->d:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_slideview_menuitem_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    return-void
.end method
