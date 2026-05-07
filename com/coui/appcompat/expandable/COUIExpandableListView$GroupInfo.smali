.class Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/COUIExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupInfo"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;-><init>()V

    return-void
.end method
