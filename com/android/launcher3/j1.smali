.class public final synthetic Lcom/android/launcher3/j1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/j1;

.field public static final synthetic c:Lcom/android/launcher3/j1;

.field public static final synthetic d:Lcom/android/launcher3/j1;

.field public static final synthetic e:Lcom/android/launcher3/j1;

.field public static final synthetic f:Lcom/android/launcher3/j1;

.field public static final synthetic g:Lcom/android/launcher3/j1;

.field public static final synthetic h:Lcom/android/launcher3/j1;

.field public static final synthetic i:Lcom/android/launcher3/j1;

.field public static final synthetic j:Lcom/android/launcher3/j1;

.field public static final synthetic k:Lcom/android/launcher3/j1;

.field public static final synthetic l:Lcom/android/launcher3/j1;

.field public static final synthetic m:Lcom/android/launcher3/j1;

.field public static final synthetic n:Lcom/android/launcher3/j1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/j1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->b:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->c:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->d:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->e:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->f:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->g:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->h:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->i:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->j:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->k:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->l:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->m:Lcom/android/launcher3/j1;

    new-instance v0, Lcom/android/launcher3/j1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/android/launcher3/j1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/j1;->n:Lcom/android/launcher3/j1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/j1;->a:I

    packed-switch p0, :pswitch_data_62

    goto :goto_5a

    :pswitch_6  #0xb
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->d(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHanded;

    move-result-object p0

    return-object p0

    :pswitch_d  #0xa
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->I(Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x9
    check-cast p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x8
    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0

    :pswitch_22  #0x7
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/launcher3/model/data/ItemInfo;->b(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x6
    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->l(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p0

    return-object p0

    :pswitch_30  #0x5
    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_37  #0x4
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3e  #0x3
    check-cast p1, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-static {p1}, Lcom/android/launcher3/icons/IconCache;->i(Lcom/android/launcher3/model/data/IconRequestInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :pswitch_45  #0x2
    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->g(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :pswitch_4c  #0x1
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/appprediction/PredictionRowView;->a(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    return-object p0

    :pswitch_53  #0x0
    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->J(Lcom/android/launcher3/CellLayout;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_5a
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_4c  #00000001
        :pswitch_45  #00000002
        :pswitch_3e  #00000003
        :pswitch_37  #00000004
        :pswitch_30  #00000005
        :pswitch_29  #00000006
        :pswitch_22  #00000007
        :pswitch_1b  #00000008
        :pswitch_14  #00000009
        :pswitch_d  #0000000a
        :pswitch_6  #0000000b
    .end packed-switch
.end method
