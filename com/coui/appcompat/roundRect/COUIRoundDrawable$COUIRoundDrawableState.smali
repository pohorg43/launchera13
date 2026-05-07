.class final Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/roundRect/COUIRoundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "COUIRoundDrawableState"
.end annotation


# instance fields
.field public a:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:F

.field public h:I

.field public i:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->a:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->e:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->f:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->a:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->e:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->f:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->h:I

    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->a:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->a:Landroid/graphics/ColorFilter;

    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->d:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->e:Landroid/content/res/ColorStateList;

    iget v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->g:F

    iput v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->g:F

    iget p1, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->i:F

    iput p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->i:F

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;-><init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->c:Z

    return-object v0
.end method
