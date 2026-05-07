.class Lcom/google/android/material/appbar/COUIDividerAppBarLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/COUIDividerAppBarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/COUIDividerAppBarLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$2;->this$0:Lcom/google/android/material/appbar/COUIDividerAppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$2;->this$0:Lcom/google/android/material/appbar/COUIDividerAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->refreshAppBar(Landroid/view/View;)Z

    return-void
.end method
