.class public final synthetic Lu/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lu/c;

.field public static final synthetic c:Lu/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lu/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/c;-><init>(I)V

    sput-object v0, Lu/c;->b:Lu/c;

    new-instance v0, Lu/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu/c;-><init>(I)V

    sput-object v0, Lu/c;->c:Lu/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lu/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget p0, p0, Lu/c;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    invoke-static {p1, p2}, Lcom/android/launcher/folder/DisbandFolderHelper;->a(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p0

    return p0

    :goto_f
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1, p2}, Lcom/android/statistics/LauncherStatisticsHelper;->a(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
