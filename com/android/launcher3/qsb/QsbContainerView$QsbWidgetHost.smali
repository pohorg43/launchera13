.class public Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/qsb/QsbContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QsbWidgetHost"
.end annotation


# instance fields
.field private final mViewFactory:Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;

.field private final mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mViewFactory:Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;

    iput-object p4, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mViewFactory:Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;

    invoke-interface {p0, p1}, Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;->newView(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public onProvidersChanged()V
    .registers 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    iget-object p0, p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;->mWidgetsUpdateCallback:Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;->onProvidersUpdated()V

    :cond_a
    return-void
.end method
