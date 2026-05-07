.class public final synthetic Lcom/android/launcher3/folder/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/folder/c;

.field public static final synthetic c:Lcom/android/launcher3/folder/c;

.field public static final synthetic d:Lcom/android/launcher3/folder/c;

.field public static final synthetic e:Lcom/android/launcher3/folder/c;

.field public static final synthetic f:Lcom/android/launcher3/folder/c;

.field public static final synthetic g:Lcom/android/launcher3/folder/c;

.field public static final synthetic h:Lcom/android/launcher3/folder/c;

.field public static final synthetic i:Lcom/android/launcher3/folder/c;

.field public static final synthetic j:Lcom/android/launcher3/folder/c;

.field public static final synthetic k:Lcom/android/launcher3/folder/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->b:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->c:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->d:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->e:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->f:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->g:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->h:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->i:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->j:Lcom/android/launcher3/folder/c;

    new-instance v0, Lcom/android/launcher3/folder/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/folder/c;->k:Lcom/android/launcher3/folder/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/folder/c;->a:I

    packed-switch p0, :pswitch_data_4e

    goto :goto_46

    :pswitch_6  #0x8
    check-cast p1, Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-static {p1}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->f(Lcom/android/wm/shell/apppairs/AppPairsController;)Lcom/android/wm/shell/apppairs/AppPairs;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x7
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/testing/TestInformationHandler;->b(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x6
    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->i(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x5
    check-cast p1, Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/launcher3/model/data/ItemInfo;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_22  #0x4
    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x3
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30  #0x2
    check-cast p1, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-static {p1}, Lcom/android/launcher3/icons/IconCache;->d(Lcom/android/launcher3/model/data/IconRequestInfo;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_37  #0x1
    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3e  #0x0
    new-instance p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-object p0

    :goto_46
    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->c(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_37  #00000001
        :pswitch_30  #00000002
        :pswitch_29  #00000003
        :pswitch_22  #00000004
        :pswitch_1b  #00000005
        :pswitch_14  #00000006
        :pswitch_d  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
