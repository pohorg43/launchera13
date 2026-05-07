.class public final synthetic Lcom/android/launcher3/allapps/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/allapps/c;

.field public static final synthetic c:Lcom/android/launcher3/allapps/c;

.field public static final synthetic d:Lcom/android/launcher3/allapps/c;

.field public static final synthetic e:Lcom/android/launcher3/allapps/c;

.field public static final synthetic f:Lcom/android/launcher3/allapps/c;

.field public static final synthetic g:Lcom/android/launcher3/allapps/c;

.field public static final synthetic h:Lcom/android/launcher3/allapps/c;

.field public static final synthetic i:Lcom/android/launcher3/allapps/c;

.field public static final synthetic j:Lcom/android/launcher3/allapps/c;

.field public static final synthetic k:Lcom/android/launcher3/allapps/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->b:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->c:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->d:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->e:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->f:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->g:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->h:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->i:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->j:Lcom/android/launcher3/allapps/c;

    new-instance v0, Lcom/android/launcher3/allapps/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/allapps/c;->k:Lcom/android/launcher3/allapps/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/allapps/c;->a:I

    packed-switch p0, :pswitch_data_50

    goto :goto_49

    :pswitch_6  #0x8
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleData;->f(Lcom/android/wm/shell/bubbles/Bubble;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x7
    check-cast p1, Lcom/android/quickstep/GestureState;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->r(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    return-object p0

    :pswitch_18  #0x6
    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0

    :pswitch_1f  #0x5
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->b(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_26  #0x4
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/testing/TestInformationHandler;->c(Lcom/android/launcher3/Launcher;)[I

    move-result-object p0

    return-object p0

    :pswitch_2d  #0x3
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/PredictionUpdateTask;->o(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :pswitch_34  #0x2
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/ModelWriter;->a(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3b  #0x1
    check-cast p1, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_42  #0x0
    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :goto_49
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->e(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/splitscreen/SplitScreen;

    move-result-object p0

    return-object p0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_3b  #00000001
        :pswitch_34  #00000002
        :pswitch_2d  #00000003
        :pswitch_26  #00000004
        :pswitch_1f  #00000005
        :pswitch_18  #00000006
        :pswitch_11  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
