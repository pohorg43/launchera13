.class Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/sellmode/SaleModeWidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public index:I

.field public widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput p2, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->index:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;)I
    .registers 2

    iget p1, p1, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->index:I

    iget p0, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->index:I

    if-le p1, p0, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;

    invoke-virtual {p0, p1}, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->compareTo(Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Result{widgetInfo="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/sellmode/SaleModeWidgetController$Result;->index:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
