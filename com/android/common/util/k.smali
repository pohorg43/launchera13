.class public final synthetic Lcom/android/common/util/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/common/util/k;

.field public static final synthetic c:Lcom/android/common/util/k;

.field public static final synthetic d:Lcom/android/common/util/k;

.field public static final synthetic e:Lcom/android/common/util/k;

.field public static final synthetic f:Lcom/android/common/util/k;

.field public static final synthetic g:Lcom/android/common/util/k;

.field public static final synthetic h:Lcom/android/common/util/k;

.field public static final synthetic i:Lcom/android/common/util/k;

.field public static final synthetic j:Lcom/android/common/util/k;

.field public static final synthetic k:Lcom/android/common/util/k;

.field public static final synthetic l:Lcom/android/common/util/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->b:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->c:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->d:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->e:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->f:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->g:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->h:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->i:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->j:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->k:Lcom/android/common/util/k;

    new-instance v0, Lcom/android/common/util/k;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/common/util/k;-><init>(I)V

    sput-object v0, Lcom/android/common/util/k;->l:Lcom/android/common/util/k;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/common/util/k;->a:I

    packed-switch p0, :pswitch_data_54

    goto :goto_4d

    :pswitch_6  #0x9
    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x8
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x7
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->a(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x6
    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->l(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_22  #0x5
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/launcher3/model/data/ItemInfo;->a(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x4
    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/launcher3/model/WidgetsModel;->f(Landroid/util/Pair;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_30  #0x3
    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_37  #0x2
    new-instance p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-object p0

    :pswitch_3f  #0x1
    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-static {p1}, Lcom/android/common/util/LauncherUtil;->a(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/dragndrop/CardInfoList$CardIdentify;

    move-result-object p0

    return-object p0

    :pswitch_46  #0x0
    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->b(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_4d
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->a(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p0

    return-object p0

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_46  #00000000
        :pswitch_3f  #00000001
        :pswitch_37  #00000002
        :pswitch_30  #00000003
        :pswitch_29  #00000004
        :pswitch_22  #00000005
        :pswitch_1b  #00000006
        :pswitch_14  #00000007
        :pswitch_d  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method
