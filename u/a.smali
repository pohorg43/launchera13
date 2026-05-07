.class public final synthetic Lu/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lu/a;

.field public static final synthetic c:Lu/a;

.field public static final synthetic d:Lu/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lu/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/a;-><init>(I)V

    sput-object v0, Lu/a;->b:Lu/a;

    new-instance v0, Lu/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu/a;-><init>(I)V

    sput-object v0, Lu/a;->c:Lu/a;

    new-instance v0, Lu/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lu/a;-><init>(I)V

    sput-object v0, Lu/a;->d:Lu/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lu/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget p0, p0, Lu/a;->a:I

    packed-switch p0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1
    check-cast p1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    check-cast p2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    invoke-static {p1, p2}, Lcom/android/launcher3/config/FeatureFlags;->a(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)I

    move-result p0

    return p0

    :pswitch_f  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1, p2}, Lcom/android/launcher/folder/DisbandFolderHelper;->b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0

    :goto_18
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->l(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
