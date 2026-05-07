.class Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;
.super Landroid/widget/TextClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-direct {p0, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-static {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->access$300(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
