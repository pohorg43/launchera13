.class public final synthetic Lcom/android/launcher3/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/u;->a:F

    iput p2, p0, Lcom/android/launcher3/u;->b:F

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/u;->a:F

    iget p0, p0, Lcom/android/launcher3/u;->b:F

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->e(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I

    move-result p0

    return p0
.end method
