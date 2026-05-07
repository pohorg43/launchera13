.class public final Lcom/android/launcher3/widget/WidgetControlHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetControlHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/widget/WidgetControlHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/WidgetControlHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetControlHelper$1;->this$0:Lcom/android/launcher3/widget/WidgetControlHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRusConfigChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetControlHelper$1;->this$0:Lcom/android/launcher3/widget/WidgetControlHelper;

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetControlHelper;->access$updateRusConfig(Lcom/android/launcher3/widget/WidgetControlHelper;)V

    return-void
.end method
