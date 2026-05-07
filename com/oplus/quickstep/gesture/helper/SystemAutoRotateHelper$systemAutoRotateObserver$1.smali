.class public final Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$systemAutoRotateObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$systemAutoRotateObserver$1;->this$0:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$systemAutoRotateObserver$1;->this$0:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->access$updateAutoRotateSetting(Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;)V

    return-void
.end method
