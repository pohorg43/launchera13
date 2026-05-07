.class public final synthetic Lcom/android/launcher3/u1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/u1;

.field public static final synthetic c:Lcom/android/launcher3/u1;

.field public static final synthetic d:Lcom/android/launcher3/u1;

.field public static final synthetic e:Lcom/android/launcher3/u1;

.field public static final synthetic f:Lcom/android/launcher3/u1;

.field public static final synthetic g:Lcom/android/launcher3/u1;

.field public static final synthetic h:Lcom/android/launcher3/u1;

.field public static final synthetic i:Lcom/android/launcher3/u1;

.field public static final synthetic j:Lcom/android/launcher3/u1;

.field public static final synthetic k:Lcom/android/launcher3/u1;

.field public static final synthetic l:Lcom/android/launcher3/u1;

.field public static final synthetic m:Lcom/android/launcher3/u1;

.field public static final synthetic n:Lcom/android/launcher3/u1;

.field public static final synthetic o:Lcom/android/launcher3/u1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/u1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->b:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->c:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->d:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->e:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->f:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->g:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->h:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->i:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->j:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->k:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->l:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->m:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->n:Lcom/android/launcher3/u1;

    new-instance v0, Lcom/android/launcher3/u1;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/android/launcher3/u1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u1;->o:Lcom/android/launcher3/u1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/u1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/u1;->a:I

    packed-switch p0, :pswitch_data_68

    goto :goto_61

    :pswitch_6  #0xc
    check-cast p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-static {p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->c(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    move-result-object p0

    return-object p0

    :pswitch_d  #0xb
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->a(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_14  #0xa
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/testing/TestInformationHandler;->i(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x9
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/launcher3/testing/TestInformationHandler;->d(Landroid/app/Activity;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0

    :pswitch_22  #0x8
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupDataProvider;->d(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x7
    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationListener;->e(Lcom/android/launcher3/notification/NotificationKeyData;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30  #0x6
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :pswitch_37  #0x5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_3e  #0x4
    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/WellbeingModel;->e(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_45  #0x3
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0

    :pswitch_4c  #0x2
    check-cast p1, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragController;->a(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher3/logging/InstanceId;

    move-result-object p0

    return-object p0

    :pswitch_53  #0x1
    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->b(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5a  #0x0
    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->P(Lcom/android/launcher3/CellLayout;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_61
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5a  #00000000
        :pswitch_53  #00000001
        :pswitch_4c  #00000002
        :pswitch_45  #00000003
        :pswitch_3e  #00000004
        :pswitch_37  #00000005
        :pswitch_30  #00000006
        :pswitch_29  #00000007
        :pswitch_22  #00000008
        :pswitch_1b  #00000009
        :pswitch_14  #0000000a
        :pswitch_d  #0000000b
        :pswitch_6  #0000000c
    .end packed-switch
.end method
