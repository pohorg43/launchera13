.class Lcom/coui/appcompat/poplist/PreciseClickHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/PreciseClickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/PreciseClickHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/PreciseClickHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->a:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/touchsearchview/COUIAccessibilityUtil;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->a:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->c:[Ljava/lang/Float;

    array-length v1, v0

    if-lez v1, :cond_30

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_17

    goto :goto_30

    :cond_17
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->a:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PreciseClickHelper;->c:[Ljava/lang/Float;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->a:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->b:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    invoke-interface {p0, p1, v0, v1}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->a(Landroid/view/View;II)V

    return-void

    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;->a:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->b:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p0, p1, v0, v1}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->a(Landroid/view/View;II)V

    return-void
.end method
