.class Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$4;->b:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$4;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$4;->b:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$4;->a:I

    iput p0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    const/4 p0, 0x0

    iput p0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    return-void
.end method
