.class public interface abstract Lcom/android/systemui/plugins/AllAppsSearchPlugin;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_ALL_APPS_SEARCH_ACTIONS"
    version = 0x3
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_ALL_APPS_SEARCH_ACTIONS"

.field public static final VERSION:I = 0x3


# virtual methods
.method public abstract onAnimationEnd(F)V
.end method

.method public abstract onDragStart(F)V
.end method

.method public abstract setEditText(Landroid/widget/EditText;)V
.end method

.method public abstract setProgress(F)V
.end method

.method public abstract setup(Landroid/view/ViewGroup;Landroid/app/Activity;F)V
.end method
