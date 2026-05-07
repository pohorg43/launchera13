.class Landroidx/slice/SliceUtils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/slice/SliceItem$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/SliceUtils;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Landroidx/slice/SliceUtils$SliceActionListener;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceUtils$SliceActionListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/slice/SliceUtils$2;->val$listener:Landroidx/slice/SliceUtils$SliceActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Landroidx/slice/SliceItem;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object p0, p0, Landroidx/slice/SliceUtils$2;->val$listener:Landroidx/slice/SliceUtils$SliceActionListener;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Landroidx/slice/SliceUtils$SliceActionListener;->onSliceAction(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
