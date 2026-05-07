.class public final synthetic Lcom/android/launcher3/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/o0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/o0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/o0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/o0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/SearchActionItemInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/o0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/o0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/o0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/o0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/o0;->a:I

    packed-switch v0, :pswitch_data_4a

    goto :goto_39

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/o0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/o0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->f(Lcom/android/launcher3/model/data/SearchActionItemInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_17  #0x1
    iget-object v0, p0, Lcom/android/launcher3/o0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/icons/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/o0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/icons/IconCache;->g(Lcom/android/launcher3/icons/IconCache;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0

    :pswitch_28  #0x0
    iget-object v0, p0, Lcom/android/launcher3/o0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/o0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/LauncherModel;->d(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0

    :goto_39
    iget-object v0, p0, Lcom/android/launcher3/o0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/o0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/WidgetItem;

    iget-object p0, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/Size;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->b(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_17  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
