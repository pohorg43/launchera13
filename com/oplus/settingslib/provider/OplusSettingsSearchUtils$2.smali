.class final Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->calculateHightlight(Landroid/widget/ListView;Ljava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$argsColorPreference:I

.field public final synthetic val$argsKey:Ljava/lang/String;

.field public final synthetic val$isCategory:Z

.field public final synthetic val$listView:Landroid/widget/ListView;

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Ljava/lang/String;IIZ)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$listView:Landroid/widget/ListView;

    iput-object p2, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$argsKey:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$y:I

    iput p4, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$argsColorPreference:I

    iput-boolean p5, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$isCategory:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$argsKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->access$100(Landroid/widget/ListView;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    iget v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$y:I

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1a

    :cond_15
    iget-object v2, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1a
    :goto_1a
    if-ltz v0, :cond_25

    iget-object v1, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$argsColorPreference:I

    iget-boolean p0, p0, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;->val$isCategory:Z

    invoke-static {v1, v0, v2, p0}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->access$000(Landroid/widget/ListView;IIZ)V

    :cond_25
    return-void
.end method
