.class public final synthetic Lcom/android/launcher3/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/DisplayController$Info;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/DisplayController$Info;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/w;->a:Lcom/android/launcher3/util/DisplayController$Info;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/w;->a:Lcom/android/launcher3/util/DisplayController$Info;

    check-cast p1, Lcom/android/launcher3/util/WindowBounds;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->a(Lcom/android/launcher3/util/DisplayController$Info;IILcom/android/launcher3/util/WindowBounds;)I

    move-result p0

    return p0
.end method
