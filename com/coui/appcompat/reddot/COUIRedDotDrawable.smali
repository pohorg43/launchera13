.class public Lcom/coui/appcompat/reddot/COUIRedDotDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

.field public d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/graphics/RectF;)V
    .registers 11

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->a:I

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->b:I

    iput-object p4, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->d:Landroid/graphics/RectF;

    new-instance p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot:[I

    sget v5, Lcom/support/appcompat/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->c:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->c:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->a:I

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->b:I

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    return-void
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1  # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
