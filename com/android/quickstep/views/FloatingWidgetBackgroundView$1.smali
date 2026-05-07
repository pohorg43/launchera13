.class Lcom/android/quickstep/views/FloatingWidgetBackgroundView$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/FloatingWidgetBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/FloatingWidgetBackgroundView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$1;->this$0:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView$1;->this$0:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-static {p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->access$100(Lcom/android/quickstep/views/FloatingWidgetBackgroundView;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
