.class Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->access$000(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)I

    move-result v0

    if-ne p1, v0, :cond_10

    if-nez p3, :cond_b

    move-object p3, p2

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->onExclusionChanged(Landroid/graphics/Region;Landroid/graphics/Region;)V

    :cond_10
    return-void
.end method
