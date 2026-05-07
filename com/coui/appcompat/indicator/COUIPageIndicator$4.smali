.class Lcom/coui/appcompat/indicator/COUIPageIndicator$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/indicator/COUIPageIndicator;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    if-eqz v0, :cond_20

    iget v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;->a:I

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->F:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    iput v0, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g()V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object p1, p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;->a:I

    invoke-interface {p1, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;->onClick(I)V

    :cond_20
    return-void
.end method
