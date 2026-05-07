.class final Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->showHightlight(Landroid/widget/ListView;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$backgroundColor:I

.field public final synthetic val$listView:Landroid/widget/ListView;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(ILandroid/widget/ListView;I)V
    .registers 4

    iput p1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;->val$position:I

    iput-object p2, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;->val$backgroundColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget v0, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;->val$position:I

    iget-object v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_36

    iget-object v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_36

    iget-object v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;->val$backgroundColor:I

    invoke-static {v2, v1}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->access$200(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    new-instance v2, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3$1;-><init>(Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_36
    return-void
.end method
