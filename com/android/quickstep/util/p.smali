.class public final synthetic Lcom/android/quickstep/util/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/VibratorWrapper;

.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/p;->a:Lcom/android/quickstep/util/VibratorWrapper;

    iput p2, p0, Lcom/android/quickstep/util/p;->b:I

    iput p3, p0, Lcom/android/quickstep/util/p;->c:F

    iput-object p4, p0, Lcom/android/quickstep/util/p;->d:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/p;->a:Lcom/android/quickstep/util/VibratorWrapper;

    iget v1, p0, Lcom/android/quickstep/util/p;->b:I

    iget v2, p0, Lcom/android/quickstep/util/p;->c:F

    iget-object p0, p0, Lcom/android/quickstep/util/p;->d:Landroid/os/VibrationEffect;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/util/VibratorWrapper;->b(Lcom/android/quickstep/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V

    return-void
.end method
