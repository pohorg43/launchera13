.class Landroidx/slice/SliceUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/slice/SliceItemHolder$HolderHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/SliceUtils;->serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$options:Landroidx/slice/SliceUtils$SerializeOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .registers 3

    iput-object p1, p0, Landroidx/slice/SliceUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/slice/SliceUtils$1;->val$options:Landroidx/slice/SliceUtils$SerializeOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroidx/slice/SliceUtils$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Landroidx/slice/SliceUtils$1;->val$options:Landroidx/slice/SliceUtils$SerializeOptions;

    invoke-static {v0, p1, p2, p0}, Landroidx/slice/SliceUtils;->handleOptions(Landroid/content/Context;Landroidx/slice/SliceItemHolder;Ljava/lang/String;Landroidx/slice/SliceUtils$SerializeOptions;)V

    return-void
.end method
