.class Lcom/android/launcher3/states/RotationHelper$RotationHelperWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/states/IRotationHelperWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/states/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RotationHelperWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/states/RotationHelper;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/states/RotationHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelper$RotationHelperWrapper;->this$0:Lcom/android/launcher3/states/RotationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/states/RotationHelper;Lcom/android/launcher3/states/RotationHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/states/RotationHelper$RotationHelperWrapper;-><init>(Lcom/android/launcher3/states/RotationHelper;)V

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/states/RotationHelper$RotationHelperWrapper;->this$0:Lcom/android/launcher3/states/RotationHelper;

    invoke-static {p0}, Lcom/android/launcher3/states/RotationHelper;->access$100(Lcom/android/launcher3/states/RotationHelper;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    return-object p0
.end method

.method public getLastActivityFlags()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/states/RotationHelper$RotationHelperWrapper;->this$0:Lcom/android/launcher3/states/RotationHelper;

    invoke-static {p0}, Lcom/android/launcher3/states/RotationHelper;->access$200(Lcom/android/launcher3/states/RotationHelper;)I

    move-result p0

    return p0
.end method

.method public setLastActivityFlags(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/states/RotationHelper$RotationHelperWrapper;->this$0:Lcom/android/launcher3/states/RotationHelper;

    invoke-static {p0, p1}, Lcom/android/launcher3/states/RotationHelper;->access$202(Lcom/android/launcher3/states/RotationHelper;I)I

    return-void
.end method
