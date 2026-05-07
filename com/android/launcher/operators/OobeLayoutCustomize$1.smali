.class Lcom/android/launcher/operators/OobeLayoutCustomize$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/util/OnFeatureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/operators/OobeLayoutCustomize;->onApplicationCreated(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/operators/OobeLayoutCustomize;


# direct methods
.method public constructor <init>(Lcom/android/launcher/operators/OobeLayoutCustomize;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/operators/OobeLayoutCustomize$1;->this$0:Lcom/android/launcher/operators/OobeLayoutCustomize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize$1;->this$0:Lcom/android/launcher/operators/OobeLayoutCustomize;

    invoke-virtual {p0}, Lcom/android/launcher/operators/OobeLayoutCustomize;->onSimCarrierChanged()V

    return-void
.end method
