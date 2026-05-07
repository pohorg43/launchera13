.class public final synthetic Lcom/android/launcher3/k1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/k1;

.field public static final synthetic c:Lcom/android/launcher3/k1;

.field public static final synthetic d:Lcom/android/launcher3/k1;

.field public static final synthetic e:Lcom/android/launcher3/k1;

.field public static final synthetic f:Lcom/android/launcher3/k1;

.field public static final synthetic g:Lcom/android/launcher3/k1;

.field public static final synthetic h:Lcom/android/launcher3/k1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/k1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/k1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k1;->b:Lcom/android/launcher3/k1;

    new-instance v0, Lcom/android/launcher3/k1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/k1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k1;->c:Lcom/android/launcher3/k1;

    new-instance v0, Lcom/android/launcher3/k1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/k1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k1;->d:Lcom/android/launcher3/k1;

    new-instance v0, Lcom/android/launcher3/k1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/k1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k1;->e:Lcom/android/launcher3/k1;

    new-instance v0, Lcom/android/launcher3/k1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/k1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k1;->f:Lcom/android/launcher3/k1;

    new-instance v0, Lcom/android/launcher3/k1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/k1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k1;->g:Lcom/android/launcher3/k1;

    new-instance v0, Lcom/android/launcher3/k1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/k1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/k1;->h:Lcom/android/launcher3/k1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/k1;->a:I

    packed-switch p0, :pswitch_data_38

    goto :goto_30

    :pswitch_6  #0x5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetControlHelper;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_d  #0x4
    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14  #0x3
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    return p0

    :pswitch_1b  #0x2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_22  #0x1
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_29  #0x0
    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_30
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->c(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_29  #00000000
        :pswitch_22  #00000001
        :pswitch_1b  #00000002
        :pswitch_14  #00000003
        :pswitch_d  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
