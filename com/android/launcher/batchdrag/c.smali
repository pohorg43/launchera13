.class public final synthetic Lcom/android/launcher/batchdrag/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic c:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic d:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic e:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic f:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic g:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic h:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic i:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic j:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic k:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic l:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic m:Lcom/android/launcher/batchdrag/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->b:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->c:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->d:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->e:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->f:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->g:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->h:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->i:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->j:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->k:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->l:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->m:Lcom/android/launcher/batchdrag/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/batchdrag/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher/batchdrag/c;->a:I

    packed-switch p0, :pswitch_data_5e

    goto :goto_57

    :pswitch_6  #0xa
    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x9
    check-cast p1, Lcom/android/quickstep/GestureState;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->l(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    return-object p0

    :pswitch_18  #0x8
    check-cast p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->f(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_1f  #0x7
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/util/Executors;->a(Ljava/lang/String;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p0

    return-object p0

    :pswitch_26  #0x6
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/testing/TestInformationHandler;->l(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2d  #0x5
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/testing/TestInformationHandler;->f(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_34  #0x4
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->m(Lcom/android/launcher3/model/WidgetItem;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0

    :pswitch_3b  #0x3
    check-cast p1, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_42  #0x2
    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :pswitch_49  #0x1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_50  #0x0
    check-cast p1, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    return-object p0

    :goto_57
    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/back/BackAnimationController;->getBackAnimationImpl()Lcom/android/wm/shell/back/BackAnimation;

    move-result-object p0

    return-object p0

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_50  #00000000
        :pswitch_49  #00000001
        :pswitch_42  #00000002
        :pswitch_3b  #00000003
        :pswitch_34  #00000004
        :pswitch_2d  #00000005
        :pswitch_26  #00000006
        :pswitch_1f  #00000007
        :pswitch_18  #00000008
        :pswitch_11  #00000009
        :pswitch_6  #0000000a
    .end packed-switch
.end method
