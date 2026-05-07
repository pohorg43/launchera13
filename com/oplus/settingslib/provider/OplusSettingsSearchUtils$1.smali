.class final Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->highlightListView(Landroid/widget/ListView;IZLandroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$isCategory:Z

.field public final synthetic val$listView:Landroid/widget/ListView;

.field public final synthetic val$position:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(IILandroid/widget/ListView;Z)V
    .registers 5

    iput p1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$position:I

    iput p2, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$y:I

    iput-object p3, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$listView:Landroid/widget/ListView;

    iput-boolean p4, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$isCategory:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget v0, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$position:I

    if-ltz v0, :cond_1f

    iget v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$y:I

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_13

    :cond_e
    iget-object v2, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_13
    iget-object v0, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$position:I

    const v2, -0x1b1b1c

    iget-boolean p0, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;->val$isCategory:Z

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->access$000(Landroid/widget/ListView;IIZ)V

    :cond_1f
    return-void
.end method
