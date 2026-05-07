.class public final synthetic Lu/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lu/b;

.field public static final synthetic c:Lu/b;

.field public static final synthetic d:Lu/b;

.field public static final synthetic e:Lu/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lu/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/b;-><init>(I)V

    sput-object v0, Lu/b;->b:Lu/b;

    new-instance v0, Lu/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu/b;-><init>(I)V

    sput-object v0, Lu/b;->c:Lu/b;

    new-instance v0, Lu/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lu/b;-><init>(I)V

    sput-object v0, Lu/b;->d:Lu/b;

    new-instance v0, Lu/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lu/b;-><init>(I)V

    sput-object v0, Lu/b;->e:Lu/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lu/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget p0, p0, Lu/b;->a:I

    packed-switch p0, :pswitch_data_2a

    goto :goto_21

    :pswitch_6  #0x2
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p1, p2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0

    :pswitch_f  #0x1
    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    check-cast p2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p1, p2}, Lcom/android/launcher3/model/data/AppInfo;->f(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I

    move-result p0

    return p0

    :pswitch_18  #0x0
    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    invoke-static {p1, p2}, Lcom/android/launcher/folder/DisbandFolderHelper;->d(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p0

    return p0

    :goto_21
    check-cast p1, Landroid/view/RemoteAnimationTarget;

    check-cast p2, Landroid/view/RemoteAnimationTarget;

    invoke-static {p1, p2}, Lcom/android/wm/shell/stagesplit/SplitScreenController;->a(Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)I

    move-result p0

    return p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_f  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
