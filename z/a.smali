.class public final synthetic Lz/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lz/a;

.field public static final synthetic c:Lz/a;

.field public static final synthetic d:Lz/a;

.field public static final synthetic e:Lz/a;

.field public static final synthetic f:Lz/a;

.field public static final synthetic g:Lz/a;

.field public static final synthetic h:Lz/a;

.field public static final synthetic i:Lz/a;

.field public static final synthetic j:Lz/a;

.field public static final synthetic k:Lz/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lz/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->b:Lz/a;

    new-instance v0, Lz/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->c:Lz/a;

    new-instance v0, Lz/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->d:Lz/a;

    new-instance v0, Lz/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->e:Lz/a;

    new-instance v0, Lz/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->f:Lz/a;

    new-instance v0, Lz/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->g:Lz/a;

    new-instance v0, Lz/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->h:Lz/a;

    new-instance v0, Lz/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->i:Lz/a;

    new-instance v0, Lz/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->j:Lz/a;

    new-instance v0, Lz/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->k:Lz/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lz/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lz/a;->a:I

    packed-switch p0, :pswitch_data_42

    goto :goto_3c

    :pswitch_6  #0x8
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->i(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_c  #0x7
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/views/LauncherRecentsView;->Z(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_12  #0x6
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->Z(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_18  #0x5
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->A(Ljava/lang/Boolean;)V

    return-void

    :pswitch_1e  #0x4
    check-cast p1, Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-static {p1}, Lcom/android/launcher3/popup/ArrowPopup;->c(Lcom/android/launcher3/widget/LocalColorExtractor;)V

    return-void

    :pswitch_24  #0x3
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->e(Landroid/view/View;)V

    return-void

    :pswitch_2a  #0x2
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->c(Lcom/android/launcher3/BubbleTextView;)V

    return-void

    :pswitch_30  #0x1
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->z(Lcom/android/launcher3/folder/FolderIcon;)V

    return-void

    :pswitch_36  #0x0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->b(Landroid/view/View;)V

    return-void

    :goto_3c
    check-cast p1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    invoke-virtual {p1}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->init()V

    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_30  #00000001
        :pswitch_2a  #00000002
        :pswitch_24  #00000003
        :pswitch_1e  #00000004
        :pswitch_18  #00000005
        :pswitch_12  #00000006
        :pswitch_c  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
