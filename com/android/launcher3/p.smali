.class public final synthetic Lcom/android/launcher3/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/p;

.field public static final synthetic c:Lcom/android/launcher3/p;

.field public static final synthetic d:Lcom/android/launcher3/p;

.field public static final synthetic e:Lcom/android/launcher3/p;

.field public static final synthetic f:Lcom/android/launcher3/p;

.field public static final synthetic g:Lcom/android/launcher3/p;

.field public static final synthetic h:Lcom/android/launcher3/p;

.field public static final synthetic i:Lcom/android/launcher3/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/p;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/p;->b:Lcom/android/launcher3/p;

    new-instance v0, Lcom/android/launcher3/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/p;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/p;->c:Lcom/android/launcher3/p;

    new-instance v0, Lcom/android/launcher3/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/p;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/p;->d:Lcom/android/launcher3/p;

    new-instance v0, Lcom/android/launcher3/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/p;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/p;->e:Lcom/android/launcher3/p;

    new-instance v0, Lcom/android/launcher3/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/p;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/p;->f:Lcom/android/launcher3/p;

    new-instance v0, Lcom/android/launcher3/p;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/p;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/p;->g:Lcom/android/launcher3/p;

    new-instance v0, Lcom/android/launcher3/p;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/p;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/p;->h:Lcom/android/launcher3/p;

    new-instance v0, Lcom/android/launcher3/p;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher3/p;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/p;->i:Lcom/android/launcher3/p;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/p;->a:I

    packed-switch p0, :pswitch_data_3e

    goto :goto_37

    :pswitch_6  #0x6
    check-cast p1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_d  #0x5
    check-cast p1, Landroid/app/Person;

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationKeyData;->a(Landroid/app/Person;)Z

    move-result p0

    return p0

    :pswitch_14  #0x4
    check-cast p1, Landroid/app/prediction/AppTargetEvent;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x3
    check-cast p1, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-static {p1}, Lcom/android/launcher3/icons/IconCache;->j(Lcom/android/launcher3/model/data/IconRequestInfo;)Z

    move-result p0

    return p0

    :pswitch_22  #0x2
    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderNameProvider;->d(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0

    :pswitch_29  #0x1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_30  #0x0
    check-cast p1, Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {p1}, Lcom/android/launcher3/DropTargetBar;->e(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result p0

    return p0

    :goto_37
    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->b(Landroid/content/pm/LauncherActivityInfo;)Z

    move-result p0

    return p0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_29  #00000001
        :pswitch_22  #00000002
        :pswitch_1b  #00000003
        :pswitch_14  #00000004
        :pswitch_d  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
