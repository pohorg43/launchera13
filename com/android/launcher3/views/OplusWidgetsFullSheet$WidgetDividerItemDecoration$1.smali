.class Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration$1;
.super Landroid/graphics/drawable/ColorDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration$1;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration;

    iput-object p2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070d38

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
