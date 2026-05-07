.class public final synthetic Lcom/android/launcher3/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/i;

.field public static final synthetic c:Lcom/android/launcher3/i;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/i;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/i;->b:Lcom/android/launcher3/i;

    new-instance v0, Lcom/android/launcher3/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/i;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/i;->c:Lcom/android/launcher3/i;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget p0, p0, Lcom/android/launcher3/i;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    check-cast p1, Lcom/android/launcher3/DevicePaddings$DevicePadding;

    check-cast p2, Lcom/android/launcher3/DevicePaddings$DevicePadding;

    invoke-static {p1, p2}, Lcom/android/launcher3/DevicePaddings;->a(Lcom/android/launcher3/DevicePaddings$DevicePadding;Lcom/android/launcher3/DevicePaddings$DevicePadding;)I

    move-result p0

    return p0

    :goto_f
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    check-cast p2, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1, p2}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->b(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
