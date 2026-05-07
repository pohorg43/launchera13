.class public final synthetic Lcom/android/common/util/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/common/util/FoldMainThreadInitializedObject;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/card/CardPermissionManager;Landroid/content/ContentResolver;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/common/util/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/common/util/n;->a:I

    packed-switch v0, :pswitch_data_7c

    goto :goto_6e

    :pswitch_6  #0x7
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->j(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Landroid/view/View;)[F

    move-result-object p0

    return-object p0

    :pswitch_13  #0x6
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusModelWriter;->t(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0

    :pswitch_20  #0x5
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusModelWriter;->q(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0

    :pswitch_2d  #0x4
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/IconCache;->k(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0

    :pswitch_3a  #0x3
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/CardPermissionManager;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentResolver;

    invoke-static {v0, p0}, Lcom/android/launcher3/card/CardPermissionManager;->a(Lcom/android/launcher3/card/CardPermissionManager;Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_47  #0x2
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/LauncherProvider;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherProvider;->b(Lcom/android/launcher3/LauncherProvider;Ljava/lang/String;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_54  #0x1
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-static {v0, p0}, Lcom/android/launcher3/Launcher;->m(Lcom/android/launcher3/Launcher;Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    return-object p0

    :pswitch_61  #0x0
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/common/util/FoldMainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/common/util/FoldMainThreadInitializedObject;->c(Lcom/android/common/util/FoldMainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_6e
    iget-object v0, p0, Lcom/android/common/util/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/common/util/n;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->a(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_61  #00000000
        :pswitch_54  #00000001
        :pswitch_47  #00000002
        :pswitch_3a  #00000003
        :pswitch_2d  #00000004
        :pswitch_20  #00000005
        :pswitch_13  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
