.class Lcom/android/launcher/Launcher$13;
.super Landroidx/dynamicanimation/animation/FloatValueHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher;->initBrowserOverLayScrollSpring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;F)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/Launcher$13;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    return-void
.end method


# virtual methods
.method public setValue(F)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object p0, p0, Lcom/android/launcher/Launcher$13;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->access$1801(Lcom/android/launcher/Launcher;F)V

    return-void
.end method
