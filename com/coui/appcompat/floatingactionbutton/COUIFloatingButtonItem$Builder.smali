.class public Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:I

.field public final b:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public c:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/content/res/ColorStateList;

.field public i:Z


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p2  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->e:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->f:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->g:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->h:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->i:Z

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->a:I

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->e:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->f:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->g:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->h:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->i:Z

    iget-object v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->d:Ljava/lang/String;

    iget v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->c:I

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->e:I

    iget v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->d:I

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->b:I

    iget-object v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->f:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->g:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->h:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->h:Landroid/content/res/ColorStateList;

    iget-boolean v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->i:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->i:Z

    iget p1, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->a:I

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->a:I

    return-void
.end method
